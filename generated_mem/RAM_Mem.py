# Data word size
word_size = 8
# Number of words in the memory
num_words = 16

# Read-Write ports
num_rw_ports = 1
# Read-only ports
num_r_ports = 0
# Write-only ports
num_w_ports = 0

# Technology to use in $OPENRAM_TECH
tech_name = "scn4m_subm"
# Process corners to characterize
process_corners = [ "TT" ]
# Voltage corners to characterize
supply_voltages = [ 3.3 ]
# Temperature corners to characterize
temperatures = [ 25 ]

# Output directory for the results
output_path = "generated_mem"
# Output file base name
output_name = "RAM_Mem"

output_dir = "/mem_generation/RAM"

# Disable analytical models for full characterization (WARNING: slow!)
# analytical_delay = False