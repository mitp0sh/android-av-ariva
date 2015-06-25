.class public final Lcom/avira/android/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/avira/android/e/c;

.field private static b:Lcom/avira/android/e/c;

.field private static final sGenericHashGenerator:Lcom/avira/android/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/avira/android/e/a;

    invoke-direct {v0}, Lcom/avira/android/e/a;-><init>()V

    sput-object v0, Lcom/avira/android/e/b;->sGenericHashGenerator:Lcom/avira/android/e/a;

    return-void
.end method

.method public static a()Lcom/avira/android/e/c;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/avira/android/e/b;->a:Lcom/avira/android/e/c;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/avira/android/e/d;

    sget-object v1, Lcom/avira/android/e/b;->sGenericHashGenerator:Lcom/avira/android/e/a;

    invoke-direct {v0, v1}, Lcom/avira/android/e/d;-><init>(Lcom/avira/android/e/a;)V

    sput-object v0, Lcom/avira/android/e/b;->a:Lcom/avira/android/e/c;

    .line 26
    :cond_0
    sget-object v0, Lcom/avira/android/e/b;->a:Lcom/avira/android/e/c;

    return-object v0
.end method

.method public static b()Lcom/avira/android/e/c;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/avira/android/e/b;->b:Lcom/avira/android/e/c;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/avira/android/e/e;

    sget-object v1, Lcom/avira/android/e/b;->sGenericHashGenerator:Lcom/avira/android/e/a;

    invoke-direct {v0, v1}, Lcom/avira/android/e/e;-><init>(Lcom/avira/android/e/a;)V

    sput-object v0, Lcom/avira/android/e/b;->b:Lcom/avira/android/e/c;

    .line 40
    :cond_0
    sget-object v0, Lcom/avira/android/e/b;->b:Lcom/avira/android/e/c;

    return-object v0
.end method
