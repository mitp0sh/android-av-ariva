.class public Lcom/avira/android/idsafeguard/api/gson/ISGetBreachesRequestData;
.super Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;
.source "SourceFile"


# instance fields
.field private final language:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p3, p0, Lcom/avira/android/idsafeguard/api/gson/ISGetBreachesRequestData;->language:Ljava/lang/String;

    .line 32
    return-void
.end method
