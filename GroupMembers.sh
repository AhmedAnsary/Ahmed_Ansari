#!/bin/bash
group_name="webAdmins"

# Check if the group exists
if grep -q "^$group_name:" /etc/group; then
    # Get the list of users in the group
    group_members=$(getent group "$group_name" | cut -d: -f4)

    # Print the list of group members
    echo "Members of $group_name group:"
    echo "$group_members"
else
    echo "Group $group_name does not exist."
fi
