echo building test_neuron
iverilog -o build/test_neuron -c build/neuron_tb_file_list.txt
echo creating waveform
vvp build/test_neuron -lxt2
echo moving waveform
mv *.lxt wave/
