.class public final synthetic Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/util/List;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->lambda$renderChunk$0$com-argusoft-sewa-android-app-component-VbdsLarvaContainerComponent(Ljava/util/List;II)V

    return-void
.end method
