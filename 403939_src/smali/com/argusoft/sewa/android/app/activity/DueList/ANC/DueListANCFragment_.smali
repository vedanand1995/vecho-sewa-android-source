.class public final Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;
.super Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;
.source "DueListANCFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;
    }
.end annotation


# static fields
.field public static final ARG_TEXT_ARG:Ljava/lang/String; = "argText"


# instance fields
.field private contentView_:Landroid/view/View;

.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;-><init>()V

    .line 27
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;Ljava/util/List;Z)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->updateListWithNextPage(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;Z)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->runOnUiThreadSetLoading(Z)V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;)V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->fetchNextPage()V

    return-void
.end method

.method public static builder()Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;
    .locals 1

    .line 68
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->injectFragmentArguments_()V

    .line 58
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    return-void
.end method

.method private injectFragmentArguments_()V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    const-string v1, "argText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->argText:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method fetchNextPage()V
    .locals 7

    .line 106
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$3;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->contentView_:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->init_(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->contentView_:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->contentView_:Landroid/view/View;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method runOnUiThreadSetLoading(Z)V
    .locals 3

    .line 94
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$2;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;Z)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateListWithNextPage(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;Ljava/util/List;Z)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
