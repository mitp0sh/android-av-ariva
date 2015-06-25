.class public final enum Lcom/avira/android/threatlandscape/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/threatlandscape/a/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/threatlandscape/a/c;

.field public static final enum ENCODING_BASE64:Lcom/avira/android/threatlandscape/a/c;

.field public static final enum ENCODING_HEX:Lcom/avira/android/threatlandscape/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/avira/android/threatlandscape/a/c;

    const-string v1, "ENCODING_HEX"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/threatlandscape/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/threatlandscape/a/c;->ENCODING_HEX:Lcom/avira/android/threatlandscape/a/c;

    .line 30
    new-instance v0, Lcom/avira/android/threatlandscape/a/c;

    const-string v1, "ENCODING_BASE64"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/threatlandscape/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/threatlandscape/a/c;->ENCODING_BASE64:Lcom/avira/android/threatlandscape/a/c;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/threatlandscape/a/c;

    sget-object v1, Lcom/avira/android/threatlandscape/a/c;->ENCODING_HEX:Lcom/avira/android/threatlandscape/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/threatlandscape/a/c;->ENCODING_BASE64:Lcom/avira/android/threatlandscape/a/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/threatlandscape/a/c;->$VALUES:[Lcom/avira/android/threatlandscape/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/threatlandscape/a/c;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/avira/android/threatlandscape/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/threatlandscape/a/c;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/threatlandscape/a/c;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/avira/android/threatlandscape/a/c;->$VALUES:[Lcom/avira/android/threatlandscape/a/c;

    invoke-virtual {v0}, [Lcom/avira/android/threatlandscape/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/threatlandscape/a/c;

    return-object v0
.end method
