import logging
from redis import Redis
from rq import Queue
from tasks import set_example_key
from config import TaskWorkerConfig

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

def main():
    redis = Redis(**TaskWorkerConfig.broker)
    print(redis.get_connection_kwargs())
    print(redis.ping())
    queue=Queue(connection=redis)

    job = queue.enqueue(set_example_key)

    logger.info("Job enqueued successfully. Job ID: %s", job.id)

if __name__ == "__main__":
    main()
