package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestBuckets(t *testing.T) {
	t.Parallel()

	BucketNames := []string{"test-bucket1", "test-bucket2"}
	// Construct the terraform options with default retryable errors to handle the most common
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../modules/buckets",
		Vars: map[string]interface{}{
			"gc_project":  "test",
			"gc_region":   "us-central-1",
			"bucket_name": BucketNames,
		},
	})

	// At the end of the test, run `terraform destroy` to clean up any resources that were created.
	defer terraform.Destroy(t, terraformOptions)

	// Run `terraform init` and `terraform apply`. Fail the test if there are any errors.
	terraform.InitAndApply(t, terraformOptions)

	// Run `terraform output` to get the buckets
	terraform.Output(t, terraformOptions, "buckets")

}
