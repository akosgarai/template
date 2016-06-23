describe('Example module Unit Tests', function () {
    beforeEach(module('example'));

    var $controller;
    
    beforeEach(inject(function(_$controller_) {
        $controller = _$controller_;
    }));

    describe('TEST001 - sample test name)', function () {
        it('it describes the sample test', function () {
            var $scope = {};
            var controller = $controller('exampleController', { '$scope' : $scope});
            var expected = [{
            }];
            $scope.expected = expected;
            expect($scope.expected).toEqual(expected); 
        }); 
    });
});
