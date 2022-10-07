//
// Created by 王晨辉 on 2022/9/29.
//

#include "particle_system_data2.h"

static const size_t kDefaultHashGridResolution = 64;

ParticleSystemData2::ParticleSystemData2():
ParticleSystemData2(0){
}

ParticleSystemData2::ParticleSystemData2(size_t numberOfParticles) {
    _positionIdx = addVectorData();
    _velocityIdx = addVectorData();
    _forceIdx = addVectorData();

    // TODO: neighbour searcher


    resize(numberOfParticles);
}

ParticleSystemData2::ParticleSystemData2(const ParticleSystemData2 &other) {
    set(other);
}

ParticleSystemData2::~ParticleSystemData2() {

}

void ParticleSystemData2::resize(size_t newNumberOfParticles) {
    _numberOfParticles = newNumberOfParticles;

    for(auto& attr : _scalarDataList){
        attr.resize(newNumberOfParticles, glm::vec1(0.0));
    }

    for(auto& attr : _vectorDataList){
        attr.resize(newNumberOfParticles, glm::vec2(0.0,0.0));
    }
}

size_t ParticleSystemData2::numberOfParticles() const {
    return _numberOfParticles;
}

size_t ParticleSystemData2::addScalarData(const glm::vec1 &initValue) {
    size_t attrIdx = _scalarDataList.size();
    _scalarDataList.emplace_back(numberOfParticles(), initValue);
    return attrIdx;
}

size_t ParticleSystemData2::addVectorData(const glm::vec2 &initValue) {
    size_t attrIdx = _vectorDataList.size();
    _vectorDataList.emplace_back(numberOfParticles(), initValue);
    return attrIdx;
}

double ParticleSystemData2::radius() const {
    return _radius;
}

void ParticleSystemData2::setRadius(double newRadius) {
    _radius = std::max(newRadius, 0.0);
}

double ParticleSystemData2::mass() const {
    return _mass;
}

void ParticleSystemData2::setMass(double newMass) {
    _mass = std::max(newMass, 0.0);
}

void ParticleSystemData2::addParticle(
    const glm::vec2& newPosition,
    const glm::vec2& newVelocity,
    const glm::vec2& newForce){

    // TODO: GPU Parallel Implement


    // in sequence of vectorDataList:
    // 0. Position  1. Velocity  2. Force
    auto pos = _vectorDataList[_positionIdx];
    auto vel = _vectorDataList[_velocityIdx];
    auto frc = _vectorDataList[_forceIdx];

    pos.emplace_back(newPosition);
    vel.emplace_back(newVelocity);
    frc.emplace_back(newForce);
}

const std::vector<std::vector<size_t>>&
ParticleSystemData2::neighborLists() const{
    return _neighborLists;
}

void ParticleSystemData2::buildNeighborSearcher(double maxSearchRadius) {

}

void ParticleSystemData2::buildNeighborLists(double maxSearchRadius) {

}

void ParticleSystemData2::set(const ParticleSystemData2 &other) {
    _radius = other._radius;
    _mass = other._mass;
    _positionIdx = other._positionIdx;
    _velocityIdx = other._velocityIdx;
    _forceIdx = other._forceIdx;
    _numberOfParticles = other._numberOfParticles;

    for (auto& attr : other._scalarDataList) {
        _scalarDataList.emplace_back(attr);
    }

    for (auto& attr : other._vectorDataList) {
        _vectorDataList.emplace_back(attr);
    }

    _neighborLists = other._neighborLists;
}

ParticleSystemData2& ParticleSystemData2::operator=(
        const ParticleSystemData2& other) {
    set(other);
    return *this;
}




