# 2025-12-19T13:31:00.363596700
import vitis

client = vitis.create_client()
client.set_workspace(path="Optical-Flow")

comp = client.get_component(name="horn_schunck_hls")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="lucas_kanade_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

