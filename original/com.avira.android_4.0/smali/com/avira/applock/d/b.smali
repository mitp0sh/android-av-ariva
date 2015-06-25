.class public final Lcom/avira/applock/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HASHED_LOCK_PASSWORD_KEY:Ljava/lang/String; = "hashed_lock_password_key"

.field private static final HASHED_LOCK_PIN_KEY:Ljava/lang/String; = "hashed_lock_pin_key"

.field private static final SALT_KEY:Ljava/lang/String; = "salt_key"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    const-string v0, "hashed_lock_pin_key"

    invoke-static {p0, p1}, Lcom/avira/applock/d/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 45
    const-string v0, "hashed_lock_pin_key"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 85
    const-string v0, "hashed_lock_password_key"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/avira/applock/d/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashed_lock_pin_key"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    const-string v0, "hashed_lock_password_key"

    invoke-static {p0, p1}, Lcom/avira/applock/d/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/avira/applock/d/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashed_lock_password_key"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    const-string v0, "salt_key"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/avira/applock/g/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "salt_key"

    invoke-static {p0, v1, v0}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v0}, Lcom/avira/applock/g/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
