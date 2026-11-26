.class Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;
.super Ljava/util/HashMap;
.source "RDServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string v0, "com.secugen.rdservice"

    const-string v1, "Secugen"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "com.scl.rdservice"

    const-string v1, "Morpho"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "com.mantra.rdservice"

    const-string v1, "Mantra"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "com.acpl.registersdk"

    const-string v1, "Startek FM220"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "com.rd.gemalto.com.rdserviceapp"

    const-string v1, "Gemalto 3M Cogent CSD200"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "com.tatvik.bio.tmf20"

    const-string v1, "Tatvik TMF20"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "com.evolute.rdservice"

    const-string v1, "Evolute"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "com.precision.pb510.rdservice"

    const-string v1, "PB510"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "com.mantra.mis100v2.rdservice"

    const-string v1, "MIS100V2 by Mantra"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "com.nextbiometrics.rdservice"

    const-string v1, "NEXT Biometrics NB-3023"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "com.iritech.rdservice"

    const-string v1, "IriTech IriShield"

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
