# 2025-12-18T13:52:30.393691900
import vitis

client = vitis.create_client()
client.set_workspace(path="Optical-Flow")

comp = client.get_component(name="horn_schunck_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp = client.create_hls_component(name = "lucas_kanade_hsl",cfg_file = ["C:\Alex\Facultate\AN_III\OpticalFlow\Optical-Flow\LK_hsl\hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="lucas_kanade_hsl")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

client.delete_component(name="lucas_kanade_hsl")

comp = client.create_hls_component(name = "lucas_kanade_hsl",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

client.delete_component(name="lucas_kanade_hsl")

comp = client.create_hls_component(name = "lucas_kanade_hls",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="lucas_kanade_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.get_component(name="horn_schunck_hls")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="lucas_kanade_hls")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="horn_schunck_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.get_component(name="lucas_kanade_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="C:\Alex\Facultate\AN_III\OpticalFlow\Optical-Flow\lucas_kanade_hls\hls_config.cfg")

cfg.set_values(key="syn.file", values=["../LK_hls/src/lucas_kanade_hls.cpp", "../LK_hls/src/lucas_kanade_hls.h", "../LK_hls/src/lucas_kanade_pyramid.cpp", "../LK_hls/src/lucas_kanade_pyramid.h", "../LK_hls/src/pyramid_downsample.cpp", "../LK_hls/src/pyramid_downsample.h"])

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

vitis.dispose()

