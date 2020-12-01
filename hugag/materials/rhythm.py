import abjad
import abjadext.rmakers
import evans

silence_maker = abjadext.rmakers.stack(
    abjadext.rmakers.NoteRhythmMaker(),
    abjadext.rmakers.force_rest(abjad.select().leaves(pitched=True)),
    # abjadext.rmakers.trivialize(abjad.select().tuplets()),
    # abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    # abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    # abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

silence_handler = evans.RhythmHandler(
    rmaker=silence_maker,
    forget=True,
    name="silence_handler",
)

# rmaker_one = abjadext.rmakers.stack(
#     abjadext.rmakers.NoteRhythmMaker(),
#     # abjadext.rmakers.trivialize(abjad.select().tuplets()),
#     # abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
#     # abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
#     # abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
# )

rmaker_one = evans.RTMMaker(
    [
        "(1 (1 1))",
        "(1 (1 1 1))",
        "(1 (1 1))",
        "(1 (3 1 1 -1))",
        "(1 (2 1 1 1 -1))",
        "(1 (1 1))",
        "(1 (1 1))",
        "(1 (1 (1 (1 1))))",
        "(1 (1 1 1 1))",
    ]
)

rhythm_handler_one = evans.RhythmHandler(
    rmaker=rmaker_one,
    forget=False,
    name="rhythm_handler_one",
)

rmaker_two = evans.RTMMaker(
    [
        "(1 (1))",
        "(1 (1 1))",
        "(1 (1))",
        "(1 (1))",
        "(1 (1))",
        "(1 (1))",
        "(1 (1))",
        "(1 (1 1))",
        "(1 (1 1))",
        "(1 (1))",
    ]
)

rhythm_handler_two = evans.RhythmHandler(
    rmaker=rmaker_two,
    forget=False,
    name="rhythm_handler_two",
)
