sudo touch t |sudo echo '#!/bin/bash' | sudo cat - $1 > t && sudo mv t $1
sudo chown alumno:alumno $1
sudo chmod u+x $1
