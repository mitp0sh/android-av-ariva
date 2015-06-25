.class public Lcom/avira/android/threatlandscape/api/gson/ProductData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private product_id:I

.field private product_type:Ljava/lang/String;

.field private random_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avira/android/utilities/a;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v1, 0x7f08011b

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/ProductData;->product_type:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/avira/android/threatlandscape/api/gson/ProductData;->product_id:I

    .line 34
    invoke-virtual {p1}, Lcom/avira/android/utilities/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/ProductData;->random_id:Ljava/lang/String;

    .line 35
    return-void
.end method
