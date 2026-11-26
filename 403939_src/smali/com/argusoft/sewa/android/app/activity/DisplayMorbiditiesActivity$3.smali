.class Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$3;
.super Ljava/lang/Object;
.source "DisplayMorbiditiesActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->buildDiseasesExplanationScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 355
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    const-string p2, "T"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 361
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    const-string p2, "F"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
