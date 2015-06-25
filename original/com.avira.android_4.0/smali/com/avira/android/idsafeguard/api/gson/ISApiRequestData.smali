.class public Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$Id;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$Id;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$Id;-><init>(Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$1;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;->id:Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData$Id;

    .line 49
    return-void
.end method
