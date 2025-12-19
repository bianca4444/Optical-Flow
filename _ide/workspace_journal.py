# 2025-12-18T23:00:56.310926700
import vitis

client = vitis.create_client()
client.set_workspace(path="Optical-Flow")

comp = client.get_component(name="horn_schunck_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

