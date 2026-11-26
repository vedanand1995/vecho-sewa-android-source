.class public Lcom/argusoft/sewa/android/app/databean/UwinBeneficiaryDto;
.super Ljava/lang/Object;
.source "UwinBeneficiaryDto.java"


# instance fields
.field public benName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ben_name"
    .end annotation
.end field

.field public beneficiaryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "beneficiary_id"
    .end annotation
.end field

.field public dob:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_of_birth"
    .end annotation
.end field

.field public gender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "beneficiary_gender"
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ben_mobile_number"
    .end annotation
.end field

.field public referenceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "beneficiary_reference_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
