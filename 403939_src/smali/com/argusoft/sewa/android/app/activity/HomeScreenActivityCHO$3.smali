.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$3;
.super Ljava/lang/Object;
.source "HomeScreenActivityCHO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->setVisit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$3;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$3;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->adapter:Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$3;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->access$100(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->getLayoutAtPosition(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 347
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->card_imageView:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->menu_present:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$3;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->access$200(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)V

    return-void
.end method
