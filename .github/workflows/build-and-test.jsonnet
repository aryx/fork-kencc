// ----------------------------------------------------------------------------
// The job
// ----------------------------------------------------------------------------
local job = {
  'runs-on': 'ubuntu-latest',
  steps: [
    {
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
    job: job,
  },
}
