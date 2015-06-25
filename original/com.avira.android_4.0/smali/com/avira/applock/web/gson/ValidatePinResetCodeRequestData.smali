.class public Lcom/avira/applock/web/gson/ValidatePinResetCodeRequestData;
.super Lcom/avira/applock/web/gson/GenericIdRequestData;
.source "SourceFile"


# instance fields
.field private final resetCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/avira/applock/web/gson/GenericIdRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p3, p0, Lcom/avira/applock/web/gson/ValidatePinResetCodeRequestData;->resetCode:Ljava/lang/String;

    .line 37
    return-void
.end method
