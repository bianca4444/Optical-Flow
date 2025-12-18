# 2025-12-18T21:11:40.260927200
import vitis

client = vitis.create_client()
client.set_workspace(path="Optical-Flow")

comp = client.get_component(name="horn_schunck_hls")
comp.run(operation="C_SIMULATION")

vitis.dispose()

comp = client.create_hls_component(name = "horn_schunck_hls",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="horn_schunck_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

