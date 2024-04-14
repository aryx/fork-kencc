// ----------------------------------------------------------------------------
// The job
// ----------------------------------------------------------------------------
local build_x86_linux_arch_job = {
  'runs-on': 'ubuntu-latest',
  container: 'archlinux',
  steps: [
    {
      uses: 'actions/checkout@v3',
    },
    {
      name: 'Install dependencies',
      run: |||
	pacman -Q
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
