import { Metadata } from "next";

export const metadata: Metadata = {
 title: 'Pricing Title',
 description: 'Princing description',
 keywords: "Princing keywords"
};

export default function PricingPage(){
    return (
        <>
            <span className="text-7xl">Princing Page</span>
        </>
    )
}