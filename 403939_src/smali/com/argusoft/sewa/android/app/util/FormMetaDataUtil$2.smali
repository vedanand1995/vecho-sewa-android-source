.class Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "FormMetaDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/argusoft/sewa/android/app/databean/MorbidityDataBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 920
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil$2;->this$0:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
