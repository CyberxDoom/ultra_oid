# Uutroi - UmserBot
# Copyright (C) 2021-2022 uutroi
# This file is a part of < https://github.com/aldrinsai6/Uutroi/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM aldrinsai6/uutroi:main

# set timezone
ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    # cloning the repo and installing requirements.
    && git clone https://github.com/aldrinsai6/uutroi.git /root/uutroi/ \
    && pip3 install --no-cache-dir -r root/TeamUltroid/requirements.txt \
    && pip3 install av --no-binary av

# changing workdir
WORKDIR /root/uutroi/

# start the bot
CMD ["bash", "startup"]
