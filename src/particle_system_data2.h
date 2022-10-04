//
// Created by 王晨辉 on 2022/9/29.
//

#ifndef CODEFLUID_PARTICLE_SYSTEM_DATA2_H
#define CODEFLUID_PARTICLE_SYSTEM_DATA2_H

#include <glm.hpp>
#include <vector>

class ParticleSystemData2{
public:
    typedef std::vector<glm::vec1> ScalarData;
    typedef std::vector<glm::vec2> VectorData;

    //! constructors
    ParticleSystemData2();
    explicit ParticleSystemData2(size_t numberOfParticles);
    ParticleSystemData2(const ParticleSystemData2& other);

    //! destructor
    virtual ~ParticleSystemData2();

    //! resize the number of particles of  container
    void resize(size_t newNumberOfParticles);


    size_t numberOfParticles() const;

    //! add a scalar layer and return its index
    size_t addScalarData(const glm::vec1 initValue = glm::vec1(0));

    //! add a vector layer and return its index
    size_t addVectorData(const glm::vec2 initValue = glm::vec2(0,0));

    double radius() const;
    virtual void setRadius(double newRadius);

    double mass() const;
    virtual void setMass(double newMass);


    void addParticle(
            const glm::vec2& newPosition,
            const glm::vec2& newVelocity = glm::vec2(0,0),
            const glm::vec2& newForce = glm::vec2(0,0));

    //! return neighbour lists
    const std::vector<std::vector<size_t>> & neighborLists() const;

    //! Builds neighbor searcher with given search radius.
    void buildNeighborSearcher(double maxSearchRadius);

    //! Builds neighbor lists with given search radius.
    void buildNeighborLists(double maxSearchRadius);

    //! Copies from other particle system data.
    void set(const ParticleSystemData2& other);
    ParticleSystemData2& operator=(const ParticleSystemData2& other);

protected:

private:
    double _radius = 1e-3;
    double _mass = 1e-3;
    size_t _numberOfParticles = 0;
    size_t _positionIdx;
    size_t _velocityIdx;
    size_t _forceIdx;

    std::vector<ScalarData> _scalarDataList;
    std::vector<VectorData> _vectorDataList;

    std::vector<std::vector<size_t>> _neighborLists;

};


#endif //CODEFLUID_PARTICLE_SYSTEM_DATA2_H
