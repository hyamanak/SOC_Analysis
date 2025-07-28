#!/bin/bash

# Hello World を出力する Ansible Playbook 内容
HELLO_PLAYBOOK='- name: Hello World
  hosts: localhost
  gather_facts: false
  tasks:
    - name: Show Hello World message
      debug:
        msg: "Hello World"'

# カレントディレクトリ（=SOC_Analysis）以下すべての .yml ファイルに書き込み
find . -type f -name "*.yml" | while read file; do
  echo "$HELLO_PLAYBOOK" > "$file"
done

