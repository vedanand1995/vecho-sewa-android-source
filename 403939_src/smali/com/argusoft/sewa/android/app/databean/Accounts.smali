.class public Lcom/argusoft/sewa/android/app/databean/Accounts;
.super Ljava/lang/Object;
.source "Accounts.java"


# instance fields
.field private ABHANumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getABHANumber()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/Accounts;->ABHANumber:Ljava/lang/String;

    return-object v0
.end method

.method public setABHANumber(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/Accounts;->ABHANumber:Ljava/lang/String;

    return-void
.end method
