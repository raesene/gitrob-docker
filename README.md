Gitrob Docker
--

A Gitrob setup with Docker compose based on [this one](https://github.com/met-office-lab/gitrob-docker), updated to use the latest version of gitrob and re-based on alpine images, to bring the size down a bit.

Setup
--

modify docker-compose.yml and change the GITHUB_API_KEY variable with a valid one for your account.

then 

`docker-compose build`
`docker-compose up`

should do the job.