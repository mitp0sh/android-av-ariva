.class public Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsRequestData;
.super Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;
.source "SourceFile"


# instance fields
.field info:Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsRequestData$Info;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsRequestData$Info;

    invoke-direct {v0, p3}, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsRequestData$Info;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsRequestData;->info:Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsRequestData$Info;

    .line 30
    return-void
.end method
