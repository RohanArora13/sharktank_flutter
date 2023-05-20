import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/company_model.dart';
import 'episode_repository.dart';

final EpisodeControllerProvider = Provider((ref) =>
    EpisodeController(episodeRepository: ref.watch(EpisodeRepositoryProvider)));


final GetCompanyProvider = FutureProvider((ref) => ref.watch(EpisodeControllerProvider).getCompanyInfo());

class EpisodeController {
  final EpisodeRepository _episodeRepository;

  EpisodeController({required EpisodeRepository episodeRepository})
      : _episodeRepository = episodeRepository;

  Future<List<Company>> getCompanyInfo() {
    return _episodeRepository.getCompanyInfo();
  }
}
