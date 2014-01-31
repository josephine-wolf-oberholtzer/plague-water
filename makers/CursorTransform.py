# -*- encoding: utf-8 -*0
from abjad.tools import abctools
from abjad.tools import datastructuretools


class CursorTransform(abctools.AbjadObject):
    r'''A cursor change.

    ::

        >>> iterable = [1, 2, 3, 4]
        >>> server = datastructuretools.StatalServer(iterable)
        >>> cursor = server()
        >>> print format(cursor)
        datastructuretools.StatalServerCursor(
            statal_server=datastructuretools.StatalServer(
                cyclic_tree=datastructuretools.CyclicPayloadTree(
                    [1, 2, 3, 4]
                    ),
                ),
            position=(),
            reverse=False,
            )

    ::

        >>> cursor(2)
        [1, 2]

    ::

        >>> from plague_water import makers
        >>> cursor_change = makers.CursorTransform(increment=3, reverse=True)
        >>> new_cursor = cursor_change(cursor)
        >>> print format(new_cursor)
        datastructuretools.StatalServerCursor(
            statal_server=datastructuretools.StatalServer(
                cyclic_tree=datastructuretools.CyclicPayloadTree(
                    [1, 2, 3, 4]
                    ),
                ),
            position=(4,),
            reverse=True,
            )        

    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_increment',
        '_reverse',
        )

    ### INITIALIZER ###

    def __init__(self, increment=None, reverse=None):
        if increment is not None:
            increment = int(increment)
        if reverse is not None:
            reverse = bool(reverse)
        self._increment = increment
        self._reverse = reverse

    ### SPECIAL METHODS ###

    def __call__(self, cursor):
        if cursor is None:
            return None
        assert isinstance(cursor, datastructuretools.StatalServerCursor)
        position = cursor.position
        if self.increment is not None:
            if not position:
                position = 0
            else:
                position = position[0]
            position += self.increment
            position = (position,)
        reverse = cursor.reverse
        if self.reverse is not None:
            reverse ^= self.reverse
        statal_server = cursor.statal_server
        new_cursor = statal_server(
            position=position,
            reverse=reverse,
            )
        return new_cursor

    ### PUBLIC PROPERTIES ###

    @property
    def increment(self):
        return self._increment

    @property
    def reverse(self):
        return self._reverse
