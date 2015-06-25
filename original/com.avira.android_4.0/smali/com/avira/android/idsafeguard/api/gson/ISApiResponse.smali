.class public Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;->status:Ljava/lang/String;

    return-object v0
.end method
