.class public Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;
.super Ljava/lang/Object;
.source "LmsScreenDataBean.java"


# instance fields
.field public final actualId:Ljava/lang/Long;

.field public final image:Landroid/graphics/Bitmap;

.field public final isBookMarked:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;->image:Landroid/graphics/Bitmap;

    .line 14
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;->name:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;->actualId:Ljava/lang/Long;

    .line 16
    iput-boolean p4, p0, Lcom/argusoft/sewa/android/app/databean/LmsScreenDataBean;->isBookMarked:Z

    return-void
.end method
