import 'package:example/docs/animated_url_list/url.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UrlListForm extends StatefulWidget {
  const UrlListForm({
    Key? key,
  }) : super(key: key);

  @override
  State<UrlListForm> createState() => _UrlListFormState();
}

class _UrlListFormState extends State<UrlListForm> {
  Url? _url;
  GlobalKey<AnimatedListState> _animatedListKeyForm = GlobalKey();

  void _handleUrlRemove(
    UrlForm formModel,
    int i,
    FormControl<String> labelControl,
    FormControl<String> urlControl,
  ) {
    _animatedListKeyForm.currentState?.removeItem(
      i,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: FadeTransition(
          opacity: animation,
          child: _buildUrlListItem(
            formModel,
            i,
            labelControl,
            urlControl,
          ),
        ),
      ),
    );

    formModel.removeUrlListItemAtIndex(i);
  }

  Widget _buildUrlListItem(
    UrlForm formModel,
    int i,
    FormControl<String> labelControl,
    FormControl<String> urlControl,
  ) {
    return UrlListItem(
      header: UrlListItemHeader(
        onTap: () => _handleUrlRemove(
          formModel,
          i,
          labelControl,
          urlControl,
        ),
      ),
      content: UrlListItemContent(
        labelControl: labelControl,
        urlControl: urlControl,
      ),
    );
  }

  void _handleUrlAdd(UrlForm formModel) {
    formModel.addUrlListItem(UrlEntity(label: '', url: ''));
    _animatedListKeyForm.currentState?.insertItem(
      (formModel.urlListControl.value ?? []).length - 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('URL list'),
      body: Container(
        constraints: const BoxConstraints(maxHeight: 500),
        child: UrlFormBuilder(
          model: _url,
          builder: (context, formModel, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReactiveUrlFormFormGroupArrayBuilder<UrlEntityForm>(
                    getExtended: (formModel) =>
                        formModel.urlListExtendedControl,
                    builder: (context, itemList, formModel) {
                      return AnimatedList(
                        key: _animatedListKeyForm,
                        itemBuilder: (context, index, animation) {
                          if (index == itemList.length) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                if (itemList.isNotEmpty)
                                  const Divider(
                                    height: 10,
                                    indent: 16,
                                    endIndent: 16,
                                  ),
                                UrlListAddItem(
                                  onTap: () => _handleUrlAdd(formModel),
                                ),
                              ],
                            );
                          }
                          return FadeTransition(
                            opacity: animation,
                            child: SizeTransition(
                              sizeFactor: animation,
                              child: itemList[index],
                            ),
                          );
                        },
                        initialItemCount: itemList.length + 1,
                      );
                    },
                    itemBuilder: (context, i, formItem, formModel) {
                      if (formItem == null) {
                        return const SizedBox.shrink();
                      }
                      return _buildUrlListItem(
                        formModel,
                        i,
                        formItem.labelControl,
                        formItem.urlControl,
                      );
                    },
                  ),
                ),
                ReactiveUrlFormConsumer(
                  builder: (context, formModel, child) {
                    return ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _animatedListKeyForm = GlobalKey();
                          _url = Url(
                            urlList: [
                              UrlEntity(label: 'l1', url: 'https://url1.com'),
                              UrlEntity(label: 'l2', url: 'https://url2.com'),
                            ],
                          );
                        });
                      },
                      child: const Text('Update `setState` with 2pcs'),
                    );
                  },
                ),
                ReactiveUrlFormConsumer(
                  builder: (context, formModel, child) {
                    return ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _animatedListKeyForm = GlobalKey();
                          _url = Url(
                            urlList: [
                              UrlEntity(label: 'l1', url: 'https://url1.com'),
                              UrlEntity(label: 'l2', url: 'https://url2.com'),
                              UrlEntity(label: 'l3', url: 'https://url3.com'),
                            ],
                          );
                        });
                      },
                      child: const Text('Update `setState` with 3pcs'),
                    );
                  },
                ),
                ReactiveUrlFormConsumer(
                  builder: (context, formModel, child) {
                    return ElevatedButton(
                      onPressed: formModel.form.valid ? () {} : null,
                      child: const Text('Submit'),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class UrlListAddItem extends StatelessWidget {
  final VoidCallback onTap;

  const UrlListAddItem({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: const [
              Icon(Icons.add_circle),
              SizedBox(width: 8),
              Text('URL'),
            ],
          ),
        ),
      ),
    );
  }
}

class UrlListItem extends StatelessWidget {
  final Widget? header;
  final Widget? content;

  const UrlListItem({Key? key, this.header, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header ?? const SizedBox.shrink(),
        content ?? const SizedBox.shrink(),
      ],
    );
  }
}

class UrlListItemHeader extends StatelessWidget {
  final VoidCallback? onTap;

  const UrlListItemHeader({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            'URL',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        if (onTap != null)
          IconButton(
            onPressed: onTap,
            icon: const Icon(Icons.remove_circle),
          ),
      ],
    );
  }
}

class UrlListItemContent extends StatelessWidget {
  final Widget? header;
  final FormControl<String> labelControl;
  final FormControl<String> urlControl;

  const UrlListItemContent({
    Key? key,
    this.header,
    required this.labelControl,
    required this.urlControl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ReactiveTextField<String>(
            key: ValueKey(labelControl),
            formControl: labelControl,
            validationMessages: {ValidationMessage.required: (_) => 'Required'},
            maxLength: 30,
            decoration: const InputDecoration(
              labelText: 'Label *',
            ),
          ),
          const SizedBox(height: 8),
          ReactiveTextField<String>(
            key: ValueKey(urlControl),
            formControl: urlControl,
            validationMessages: {ValidationMessage.required: (_) => 'Required'},
            decoration: const InputDecoration(
                labelText: 'e.g https://www.example.com *'),
          ),
        ],
      ),
    );
  }
}
