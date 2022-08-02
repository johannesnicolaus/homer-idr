FROM continuumio/anaconda3:2022.05

RUN git clone https://github.com/karmel/homer-idr.git && \
    chmod +x homer-idr/idr/*py

ENV PYTHONPATH=$PYTHONPATH:/homer-idr
RUN echo "alias run_idr='python /homer-idr/idr/run_idr.py'" >>/root/.bashrc