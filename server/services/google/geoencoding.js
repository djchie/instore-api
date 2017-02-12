import rp from 'request-promise';

import config from '../../../config';

const geoencoding = {};

geoencoding.fetchCoordinates = async (address) => {
  const options = {
    method: 'GET',
    uri: 'https://maps.googleapis.com/maps/api/geocode/json',
    headers: {
      'User-Agent': 'webapp:instore-server:v1.0.0 (by derrick@instor.co)',
      'Content-Type': 'application/json',
    },
    qs: {
      key: config.google.geoencoding.api_key,
      address: address,
    },
    json: true,
  };

  return rp(options)
    .then((data) => {
      return data;
    })
    .catch((error) => {
      return error;
    });
};

export default geoencoding;
