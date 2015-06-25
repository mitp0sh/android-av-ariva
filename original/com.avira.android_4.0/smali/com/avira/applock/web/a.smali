.class public Lcom/avira/applock/web/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GENERATE_RESET_PIN_CODE:Ljava/lang/String; = "generateResetPinCode"

.field private static final TAG:Ljava/lang/String;

.field public static final VALIDATE_RESET_PIN_CODE:Ljava/lang/String; = "validateResetPinCode"

.field private static final sGson:Lcom/google/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/avira/applock/web/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/applock/web/a;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/google/b/j;

    invoke-direct {v0}, Lcom/google/b/j;-><init>()V

    sput-object v0, Lcom/avira/applock/web/a;->sGson:Lcom/google/b/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/avira/applock/common/web/a;)V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Lcom/avira/applock/web/gson/GenericIdRequestData;

    invoke-static {p0}, Lcom/avira/applock/f/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/avira/applock/f/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/applock/web/gson/GenericIdRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/avira/applock/web/a;->sGson:Lcom/google/b/j;

    invoke-virtual {v1, v0}, Lcom/google/b/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/avira/applock/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "generateResetPinCode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p0}, Lcom/avira/applock/common/web/b;->a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lcom/avira/applock/web/a;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/avira/applock/common/web/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 81
    :try_start_0
    new-instance v0, Lcom/avira/applock/web/gson/ValidatePinResetCodeRequestData;

    invoke-static {p0}, Lcom/avira/applock/f/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/avira/applock/f/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/avira/applock/web/gson/ValidatePinResetCodeRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/avira/applock/web/a;->sGson:Lcom/google/b/j;

    invoke-virtual {v1, v0}, Lcom/google/b/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/avira/applock/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "validateResetPinCode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {p0}, Lcom/avira/applock/common/web/b;->a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/avira/applock/web/a;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
