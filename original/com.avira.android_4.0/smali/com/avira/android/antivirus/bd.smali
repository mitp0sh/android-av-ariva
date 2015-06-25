.class public final Lcom/avira/android/antivirus/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLEAN_APP_LIST_TAG:Ljava/lang/String; = "cleanAppList"

.field private static final SEPERATOR_TOKEN:Ljava/lang/String; = ","

.field private static a:Lcom/avira/android/antivirus/bd;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/avira/android/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/bd;->b:Landroid/content/SharedPreferences;

    .line 25
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/bd;->c:Lcom/avira/android/a/c;

    .line 26
    return-void
.end method

.method public static a()Lcom/avira/android/antivirus/bd;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/avira/android/antivirus/bd;->a:Lcom/avira/android/antivirus/bd;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/avira/android/antivirus/bd;

    invoke-direct {v0}, Lcom/avira/android/antivirus/bd;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/bd;->a:Lcom/avira/android/antivirus/bd;

    .line 50
    :cond_0
    sget-object v0, Lcom/avira/android/antivirus/bd;->a:Lcom/avira/android/antivirus/bd;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/avira/android/antivirus/bd;->b:Landroid/content/SharedPreferences;

    const-string v1, "cleanAppList"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avira/android/antivirus/bd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/avira/android/antivirus/bd;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "cleanAppList"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void

    .line 61
    :cond_0
    const-string v2, "cleanAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/avira/android/antivirus/bd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    const-string v1, "cleanAppList"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/avira/android/antivirus/bd;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/avira/android/antivirus/bd;->c:Lcom/avira/android/a/c;

    invoke-virtual {v5, v4}, Lcom/avira/android/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/avira/android/antivirus/bd;->c:Lcom/avira/android/a/c;

    invoke-virtual {v6, v5}, Lcom/avira/android/a/c;->a(Ljava/lang/String;)Lcom/avira/android/a/b;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_0

    new-instance v6, Lcom/avira/android/a/b;

    invoke-direct {v6, v4, v4, v5}, Lcom/avira/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method
