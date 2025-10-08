package sdk

import "testing"

func TestHello(t *testing.T) { if Hello() != "Hello from Nexus SDK" { t.Fail() } }