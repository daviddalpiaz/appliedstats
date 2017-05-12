# Set git config information
git config --global user.name "David Dalpiaz"
git config --global user.email "dalpiaz2@illinois.edu"

## File System
# / (Root)
# |- data
# |- deployment
# |- devel
# |- images
# |- *.Rmd
# |- _book # Newly generated commit

# Clone the repository's gh-pages branch
git clone -b gh-pages \
  https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git \
  book-output

# The goal of the gh-pages branch is to contain the contents of _book and all .Rmd files
 
# Change to the gh-page branch known on the file system as book-output
cd book-output

# Copy generated output to book-output
cp -r ../_book/* ./

# Copy all .Rmd files to book-output
cp -r ../*.Rmd ./

# Add all files in book-output to the repo
git add *
git commit -a -m "Updating book (${TRAVIS_BUILD_NUMBER})"
git push origin gh-pages
