.class Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;
.super Ljava/lang/Object;
.source "VbdsLarvaContainerComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FamilyAnswer"
.end annotation


# instance fields
.field final familyId:Ljava/lang/String;

.field positiveContainers:Ljava/lang/Integer;

.field searchedContainers:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->familyId:Ljava/lang/String;

    return-void
.end method
