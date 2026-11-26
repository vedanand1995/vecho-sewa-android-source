.class public Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;
.super Lorg/androidannotations/api/builder/FragmentBuilder;
.source "DueListANCFragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentBuilder_"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/builder/FragmentBuilder<",
        "Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;",
        "Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/androidannotations/api/builder/FragmentBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public argText(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;->args:Landroid/os/Bundle;

    const-string v1, "argText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;
    .locals 2

    .line 126
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;->args:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment_$FragmentBuilder_;->build()Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCFragment;

    move-result-object v0

    return-object v0
.end method
