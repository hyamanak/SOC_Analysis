#!/bin/bash

# ベースディレクトリ
BASE=.

# ディレクトリ構造作成
mkdir -p $BASE/{group_vars,playbooks/AI_Dify,playbooks/CSPM/PrismaCloud/_old,playbooks/CWPP,playbooks/EDR_CB/EDR_CB_IoC,playbooks/EDR_CB/EDR_CB_KSC_Critical,playbooks/EDR_CB/EDR_CB_KSC_Warning,playbooks/EDR_CB/EDR_CB_Kitakyushu_Critical,playbooks/EDR_CB/EDR_CB_Kitakyushu_Warning,playbooks/EDR_CB/EDR_CB_SCFK_Critical/old,playbooks/EDR_CB/EDR_CB_SCFK_Warning/old,playbooks/EDR_CB/old,playbooks/EDR_CB/test,playbooks/EDR_CB/vars,playbooks/EDR_CortexXDR/vars,playbooks/EDR_CrowdStrike,playbooks/MSIEM,playbooks/MSS/AlarmLog,playbooks/MSS/old,playbooks/MSS/pcap/202408,playbooks/MSS/pcap/202505/20250502,playbooks/MSS/vars,playbooks/MSS_AUTO/block/FG,playbooks/MSS_AUTO/block/PA,playbooks/MSS_AUTO/block/old,playbooks/MSS_AUTO/block/test,playbooks/MSS_AUTO/block/vars,playbooks/MSS_AUTO/unblock,playbooks/NDR_CortexXDR,playbooks/NDR_SNA/vars,playbooks/OT_Nozomi,playbooks/SHARE,roles/db_register/tasks}

# hello world を書き込むYAMLファイル
echo -e "- name: Hello World\n  hosts: localhost\n  tasks:\n    - debug:\n        msg: \"Hello World\"" > $BASE/group_vars/all.yml

# 他のymlファイル（ダミー）作成
find $BASE -type d | while read dir; do
    for f in {a..c}; do
        touch "$dir/dummy_$f.yml"
    done
done

