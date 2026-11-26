.class Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil$2;
.super Ljava/lang/Object;
.source "DisplayMorbiditiesFormUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)I
    .locals 0

    .line 27
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->riskValueOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->riskValueOf(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

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

    .line 24
    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    check-cast p2, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil$2;->compare(Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)I

    move-result p1

    return p1
.end method
