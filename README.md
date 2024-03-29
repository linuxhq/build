# build

[![License](https://img.shields.io/badge/license-GPLv3-brightgreen.svg?style=flat)](COPYING)

Manage nodes via ansible

## Environment

    make
    source venv/bin/activate

## Execution

### CDN

    ansible-playbook playbooks/cdn/build.yml

### Cloud

    ansible-playbook playbooks/cloud/build.yml

### Servers

    ansible-playbook playbooks/servers/prerequisites.yml -e ansible_user=xxx
    ansible-playbook playbooks/servers/build.yml

### Workstation

    ansible-playbook playbooks/workstation/build.yml

## License

Copyright (C) 2023 Taylor Kimball

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.
