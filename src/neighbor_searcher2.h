//
// Created by 王晨辉 on 2022/10/4.
//
#ifndef CODEFLUID_NEIGHBOR_SEARCHER2_H
#define CODEFLUID_NEIGHBOR_SEARCHER2_H

#include <iostream>
#include <glm.hpp>
#include <vector>

class neighborSearcher2{
public:
    // 构造器
    neighborSearcher2(size_t resolutionX, size_t resolutionY, double gridSpacing);
    neighborSearcher2(glm::vec2 resolution, double gridSpacing);
    neighborSearcher2(const neighborSearcher2& other);

    // origin点附近radius半径内是否有其他点
    bool hasNearbyPoint(const glm::vec2 &origin, double radius) const;

    // 把origin粒子周围radius内的所有点排序后存在vector里，第0个点在vector[0]，存储的数据内容为粒子的hash key
    // vector递增（即按粒子的hash key递增排序）
    const std::vector<size_t>& keys() const;


    // startIndexTable 和 endIndexTable分别表示某个粒子在上一个vector里的起始index和结束的后一个index
    // 例如
    // keys()返回结果 [5|8|8|10|10|10]
    // startIndexTable [.....|0|...|1|..|3|..]
    // endIndexTable   [.....|1|...|3|..|6|..]
    //                        ^5    ^8   ^10
    const std::vector<size_t>& startIndexTable() const;
    const std::vector<size_t>& endIndexTable() const;

    // 输入bucket（就是一个网格）的二维index(比如（0，1）), 返回它对应的hash key
    size_t getHashKeyFromBucketIndex(const glm::vec2 &bucketIndex) const;

    // 输入点的位置（比如(2.44,3.87) ）返回所在网格的index（比如（0，1））
    glm::vec2 getBucketIndex(const glm::vec2 &position) const;

    // copy from other instances
    neighborSearcher2& operator= (const neighborSearcher2& other);
    void set(const neighborSearcher2& other);
private:
    double _gridSpacing = 1.0;
    glm::vec2 _resolution = glm::vec2(64, 64);
    std::vector<glm::vec2> _points;
    std::vector<size_t> _keys;
    std::vector<size_t> _startIndexTable;
    std::vector<size_t> _endIndexTable;
    std::vector<size_t> _sortedIndices;

    size_t getHashKeyFromPosition(const glm::vec2 &position) const;
    void getNearbyKeys(const glm::vec2 & position, size_t* bucketIndices) const;

};


#endif //CODEFLUID_NEIGHBOR_SEARCHER2_H
