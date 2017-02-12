import rp from 'request-promise';

import config from '../../../config';

const geocodingApi = {};

geocodingApi.getGeocoding = (address) => {
  const options = {
    method: 'GET',
    uri: 'https://maps.googleapis.com/maps/api/geocode/json',
    headers: {
      'User-Agent': 'webapp:instore-server:v1.0.0 (by derrick@instor.co)',
      'Content-Type': 'application/json',
    },
    qs: {
      key: config.google.geocoding.api_key,
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

geocodingApi.getReverseGeocoding = (latitude, longitude) => {
  const options = {
    method: 'GET',
    uri: 'https://maps.googleapis.com/maps/api/geocode/json',
    headers: {
      'User-Agent': 'webapp:instore-server:v1.0.0 (by derrick@instor.co)',
      'Content-Type': 'application/json',
    },
    qs: {
      key: config.google.geocoding.api_key,
      latlng: `${latitude},${longitude}`,
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

export default geocodingApi;
