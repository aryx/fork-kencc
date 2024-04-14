// ----------------------------------------------------------------------------
// Helpers
// ----------------------------------------------------------------------------

local checkout = {
  uses: 'actions/checkout@v3',
};

// ----------------------------------------------------------------------------
// The jobs
// ----------------------------------------------------------------------------
local build_x86_linux_arch_job = {
  'runs-on': 'ubuntu-latest',
  container: 'archlinux',
  steps: [
    checkout,
    {
      name: 'Install dependencies',
      run: |||
	pacman -S gcc lib32-glibc lib32-gcc-libs
      |||,
    },
    {
      name: 'Build',
      run: |||
        ./configure
        . ./env
        mk
        mk install
      |||,
    }
  ]
};

// ----------------------------------------------------------------------------
// The workflow
// ----------------------------------------------------------------------------
{
  name: 'build-and-test',
  on: {
    // can be run manually from the GHA dashboard
    workflow_dispatch: null,
    // on the PR
    pull_request: null,
    // and another time once the PR is merged on master
    push: {
      branches: [
        'master',
      ],
    },
  },
  jobs: {
    'build-x86-linux-arch': build_x86_linux_arch_job,
  },
}
