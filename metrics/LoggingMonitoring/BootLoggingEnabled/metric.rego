package metrics.logging_monitoring.boot_logging_enabled

import data.compare
import rego.v1
import input.bootLogging as logging

default applicable = false

default compliant = false

applicable if {
	logging
}

compliant if {
	compare(data.operator, data.target_value, logging.enabled)
}