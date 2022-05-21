# Pull Requests

#Branch name validation
if not github.branch_for_head.include? ("feature/" || "tests/")
failure("Your branch name has wrong naming convention. Please change it!")
end

# PR title validation
if not github.pr_title.include? ("feature/" || "tests/")
warn("PR title should start with 'feature/' or 'tests/'")
end

# Pull request body validation
if not github.pr_body.include? "What does this PR do?"
warn("PR has too short description. 📝 You should provide a description of the changes that have made.")
end

# Warn to run tests
if github.pr_title.include? ("feature/" || "tests/")
warn("Did you run tests on Jenkins?")

# Warn when there is a big PR
if git.lines_of_code > 600
warn("Big PR, consider splitting into smaller") 
end

# Swiftlint

swiftlint.config_file = '.swiftlint.yml'
swiftlint.binary_path = 'Pods/SwiftLint/swiftlint'
swiftlint.lint_files inline_mode: true
issue_difference = swiftlint.issues.count()

failure("Number of Swiftlint warnings increased by #{issue_difference}") if issue_difference > 0
message("No additional Swiftlint warnings have been introduced 🚀🔥") if issue_difference == 0
