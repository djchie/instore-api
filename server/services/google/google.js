import geocodingApi from './geocoding-api';

const google = {};

google.fetchCoordinates = async (address) => {
  try {
    const response = await geocodingApi.getGeocoding(address);
    return response;
  } catch (error) {
    console.log('Error with geocodingApi.getGeocoding');
    console.log(error);
  }

}

export default google;
