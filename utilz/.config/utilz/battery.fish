#!/usr/bin/env fish

# Get battery info using acpi
set battery_info (acpi -b)

# Extract percentage using string manipulation
set battery_percent (echo $battery_info | awk -F ', ' '{print $2}' | tr -d '%')

# Display battery percentage
echo "$battery_percent%"

