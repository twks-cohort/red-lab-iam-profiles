
# frozen_string_literal: true

title 'DPS Labs - AWS Service Account Profiles'

describe aws_iam_group(group_name: 'DPSNonprodServiceAccountGroup') do
  it { should exist }
  its('users') { should include('DPSNonprodServiceAccount') }
end

describe aws_iam_user(user_name: 'DPSNonprodServiceAccount') do
  it { should exist }
end

