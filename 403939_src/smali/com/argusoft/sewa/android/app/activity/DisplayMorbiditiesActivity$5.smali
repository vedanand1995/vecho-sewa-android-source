.class Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$5;
.super Ljava/lang/Object;
.source "DisplayMorbiditiesActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->prepareHashTableForPNCHVMorbidity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)I
    .locals 0

    .line 531
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 528
    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    check-cast p2, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$5;->compare(Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)I

    move-result p1

    return p1
.end method
