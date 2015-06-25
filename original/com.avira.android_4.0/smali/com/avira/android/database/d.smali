.class final Lcom/avira/android/database/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/database/g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "communicationsSettingsTable"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "settingsName"

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "settingsValue"

    return-object v0
.end method
